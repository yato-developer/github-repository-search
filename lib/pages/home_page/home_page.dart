import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("R E P O S I T O R Y"),
      ),
      body: Column(
        children: [
          _buildSearchTextField(),
          _buildRepositoryList(),
        ],
      ),
    );
  }

  Widget _buildSearchTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade100),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "検索",
                ),
                onSubmitted: (String value) {},
              ),
            ),
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRepositoryList() {
    return Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return _buildRepositoryItemContainer();
          }),
    );
  }

  Widget _buildRepositoryItemContainer() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Text("Repository"),
          ],
        ),
      ),
    );
  }
}
