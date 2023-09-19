import 'package:flutter/material.dart';

class eSewaDashboard extends StatelessWidget {
  const eSewaDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SahakariPay Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Welcome to Sahakari Pay!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DashboardCard(
                    icon: Icons.account_balance_wallet,
                    title: 'Balance',
                    amount: 'NPR 10,000',
                  ),
                  DashboardCard(
                    icon: Icons.description,
                    title: 'Statement',
                    amount: '',
                  ),
                  DashboardCard(
                    icon: Icons.payment,
                    title: 'Pay Bills',
                    amount: '',
                  ),
                  DashboardCard(
                    icon: Icons.add_circle_outlined,
                    title: 'TopUP',
                    amount: '',
                  ),
                  DashboardCard(
                    icon: Icons.credit_card,
                    title: 'Card Payments',
                    amount: '',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Recent Transactions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.check_circle_outline),
                  title: Text('Transaction $index'),
                  subtitle: const Text('Amount: NPR 500'),
                  trailing: const Text('July 17, 2023'),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;

  const DashboardCard({
    required this.icon,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(amount),
          ],
        ),
      ),
    );
  }
}
