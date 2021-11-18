import 'package:bug_tracker/helpers/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracker/widgets/tickets/ticket.dart';

class TicketList extends StatefulWidget {
  const TicketList({Key? key}) : super(key: key);

  @override
  _TicketListState createState() => _TicketListState();
}

class _TicketListState extends State<TicketList> {
  List<Ticket> tickets = [
    Ticket(
        title: 'Implement database for BugZilla',
        description: 'Use online resources and Blackboard for implementation'),
    Ticket(
        title: 'Connect server to BugZilla',
        description: 'Learn and implement Python Flask'),
    Ticket(
        title: 'Modify requirement specs',
        description:
            'Due to time restrictions, some features originally stated may need to be implemented differently.'),
    Ticket(
        title: 'Negotiate with clients about the change',
        description:
            'Explain the time restraints and the expected features to be at launch.'),
    Ticket(
        title: 'Shift priority from UI desgin to backend functionality',
        description:
            'Deadline is approaching soon, start refining app functionality'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Defect Ticket List'),
          centerTitle: true,
          backgroundColor: AppColors.COLOR_TWO,
        ),
        body: Column(
          children:
              tickets.map((ticket) => TicketCard(ticket: ticket)).toList(),
        ));
  }
}

class TicketCard extends StatelessWidget {
  Ticket ticket;
  TicketCard({required this.ticket});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Title: ${ticket.title}',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0),
            Text(
              'Description: ${ticket.description}',
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}
