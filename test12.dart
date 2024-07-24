class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfUrl = false;
}

class Trie {
  TrieNode root = TrieNode();

  void insert(String url) {
    TrieNode node = root;
    for (int i = 0; i < url.length; i++) {
      String char = url[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }
    node.isEndOfUrl = true;
  }

  void display([TrieNode? node, String prefix = '']) {
    node ??= root;
    if (node.isEndOfUrl) {
      print(prefix);
    }
    node.children.forEach((char, nextNode) {
      display(nextNode, prefix + char);
    });
  }
}

void main() {
  Trie trie = Trie();
  trie.insert("https://example.com");
  trie.insert("https://example.org");
  trie.insert("https://another-example.com");

  trie.display(); // 공통 접두어를 포함한 URL 출력
}
