
import 'package:flutter/material.dart';
import 'package:meditation_app/untils/theme.dart';
import 'package:meditation_app/widgets/reponsive_builder.dart';


class ChooseTopicPage extends StatelessWidget {
  const ChooseTopicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
        child : ReponsiveBuilder( 
          portrait: Column(
          children: [
            const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: _Header(),
              ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.amber,
              ),
              ),
          ],
        ), 
          landscape: Row(
          children: [
             const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Expanded(child: _Header()),
                  Spacer(),
                ],
              ),
              ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
              ),
          ],
        ))
        ),
    );
  }

}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 3,
          ),
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'What bring you',
                      style: PrimaryFont.bold(28),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'to Silent Moon?',
                      style: PrimaryFont.light(28),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Flexible(
            flex: 1,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              child: Text(
                'choose a topic to focus on:',
                style: PrimaryFont.light(20)
                    .copyWith(color: const Color(0xFFA1A4B2)),
              ),
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}