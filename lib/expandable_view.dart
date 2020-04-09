import 'package:flutter/material.dart';

/// Button that expands and show a hided view.
class ExpandableView extends StatefulWidget {
  /// Content to show when view is expanded.
  final Widget child;

  /// Solid [Color] for view.
  final Color color;

  /// [Gradient] color for view.
  final Gradient gradient;

  /// [Icon] for button.
  final IconData icon;

  /// [Color] for button.
  final Color iconColor;

  /// Title to show.
  final String title;

  /// [Color] of title.
  final Color titleColor;

  /// set True if it has a [SafeArea] as parent.
  final bool hasSafeArea;

  /// set True if it's in a Scaffold with [AppBar].
  final bool hasAppBar;

  /// Constructs an ExpandableView Widget.
  ExpandableView({
    @required this.child,
    this.color,
    this.gradient,
    @required this.icon,
    this.iconColor = Colors.white,
    this.title = "",
    this.titleColor = Colors.white,
    this.hasSafeArea = false,
    this.hasAppBar = false,
  }) : assert(
            (color == null && gradient == null) ||
                (color != null && gradient == null) ||
                (color == null && gradient != null),
            "ExpandableView can't use color and gradient at the same time");

  @override
  State<StatefulWidget> createState() => _ExpandableViewState();
}

class _ExpandableViewState extends State<ExpandableView> {
  Size _size;
  double _height;
  double _width;
  bool _isOpen = false;
  bool _showContent = false;

  Future<void> _open() async {
    _height = _size.height * 0.9;
    if (widget.hasSafeArea && widget.hasAppBar)
      _height = _size.height * 0.8;
    else if (widget.hasSafeArea)
      _height = _size.height * 0.9;
    else if (widget.hasAppBar) _height = _size.height * 0.8;
    if (Theme.of(context).platform == TargetPlatform.iOS &&
        widget.hasSafeArea &&
        !widget.hasAppBar) _height -= 40;
    _width = _size.width;
    _isOpen = true;
    setState(() {});
    await Future.delayed(
      Duration(milliseconds: 500),
      () => _showContent = true,
    );
    setState(() {});
  }

  void _close() {
    _showContent = false;
    setState(() {});
    _height = _size.height * 0.15;
    _width = _size.width * 0.45;
    _isOpen = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (_size == null) {
      _size = MediaQuery.of(context).size;
      _close();
    }
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () async => (!_isOpen) ? await _open() : null,
        child: AnimatedContainer(
          height: _height,
          width: _width,
          duration: Duration(milliseconds: 500),
          decoration: _boxDecoration,
          child: Stack(
            children: <Widget>[
              Visibility(
                visible: _showContent,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => (_isOpen) ? _close() : null,
                        child: Padding(
                          padding: EdgeInsets.only(top: _height * 0.02),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 35,
                            color: widget.iconColor,
                          ),
                        ),
                      ),
                      (widget.title.isNotEmpty)
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: 50.0, top: _height * 0.02),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    widget.icon,
                                    size: 35,
                                    color: widget.iconColor,
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    widget.title,
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: widget.titleColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                      SizedBox(height: _height * 0.04),
                      Container(
                        height: (widget.title.isNotEmpty)
                            ? ((Theme.of(context).platform ==
                                    TargetPlatform.iOS)
                                ? _height * 0.76
                                : _height * 0.70)
                            : _height * 0.82,
                        width: _width * 0.80,
                        child: SingleChildScrollView(
                          child: widget.child,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: !_isOpen,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        widget.icon,
                        size: (widget.title.isNotEmpty) ? 35 : 60,
                        color: widget.iconColor,
                      ),
                      (widget.title.isNotEmpty)
                          ? SizedBox(height: _height * 0.1)
                          : Container(),
                      (widget.title.isNotEmpty)
                          ? Text(
                              widget.title,
                              style: TextStyle(
                                fontSize: 20,
                                color: widget.titleColor,
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration get _boxDecoration {
    BoxDecoration boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
          Color(0xFF5496FF),
          Color(0xFF8739E5),
        ],
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(90),
        topRight: Radius.circular(90),
      ),
    );
    if (widget.color != null)
      boxDecoration = BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(90),
          topRight: Radius.circular(90),
        ),
      );
    else if (widget.gradient != null)
      boxDecoration = BoxDecoration(
        gradient: widget.gradient,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(90),
          topRight: Radius.circular(90),
        ),
      );
    return boxDecoration;
  }
}
