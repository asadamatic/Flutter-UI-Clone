import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tradingappui/Screen/LoginCotainer.dart';
import 'package:tradingappui/Screen/SignupContainer.dart';

class Account extends StatefulWidget {
  Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('Real Account'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('LOGIN'),
              ),
              Tab(
                child: Text('CREATE ACCOUNT'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      LoginContainer(),
                    ]
                  ),
                )
              ],
            ),
            CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                      [
                        SignupContainer(),
                      ]
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
