import '../../main.dart';

class DashboardPage extends ReactiveStatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(opacity: .1, child: loanIcon.center()),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              title: 'MONEY'.text(),
            ),
            SliverList.list(
              children: [
                'Peoples'.text(textScaleFactor: 1.5).pad(),
                peoplesManager.peoples.length
                    .text(textScaleFactor: 5)
                    .pad()
                    .card(),
                "Loans".text(textScaleFactor: 1.5).pad(),
                peoplesManager.peoples.totalLoans
                    .text(textScaleFactor: 3)
                    .pad()
                    .card(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
