pragma solidity ^0.4.25;

import "BokkyPooBahsRedBlackTreeLibrary.sol";

// ----------------------------------------------------------------------------
// BokkyPooBah's Red-Black Tree Library v0.90 - Contract for testing
//
// A Solidity Red-Black Tree library to store and access a sorted list of
// unsigned integer data in a binary search tree.
// The Red-Black algorithm rebalances the binary search tree, resulting in
// O(log n) insert, remove and search time (and ~gas)
//
// https://github.com/bokkypoobah/BokkyPooBahsRedBlackTreeLibrary
//
//
// Enjoy. (c) BokkyPooBah / Bok Consulting Pty Ltd 2018. The MIT Licence.
// ----------------------------------------------------------------------------

contract TestBokkyPooBahsRedBlackTreeRaw {
    using BokkyPooBahsRedBlackTreeLibrary for BokkyPooBahsRedBlackTreeLibrary.Tree;

    BokkyPooBahsRedBlackTreeLibrary.Tree tree;

    event Log(string where, string action, uint key, uint parent, uint left, uint right, bool red);

    constructor() public {
        tree.init();
    }
    function root() public view returns (uint _key) {
        _key = tree.root;
    }
    function inserted() public view returns (uint _inserted) {
        _inserted = tree.inserted;
    }
    function removed() public view returns (uint _removed) {
        _removed = tree.removed;
    }
    function count() public view returns (uint _count) {
        _count = tree.count();
    }
    function first() public view returns (uint _key) {
        _key = tree.first();
    }
    function last() public view returns (uint _key) {
        _key = tree.last();
    }
    function next(uint key) public view returns (uint _key) {
        _key = tree.next(key);
    }
    function prev(uint key) public view returns (uint _key) {
        _key = tree.prev(key);
    }
    function exists(uint key) public view returns (bool _exists) {
        _exists = tree.exists(key);
    }
    function getNode(uint _key) public view returns (uint key, uint parent, uint left, uint right, bool red) {
        (key, parent, left, right, red) = tree.getNode(_key);
    }
    function parent(uint key) public view returns (uint _parent) {
        _parent = tree.parent(key);
    }
    function grandparent(uint key) public view returns (uint _grandparent) {
        _grandparent = tree.grandparent(key);
    }
    function sibling(uint key) public view returns (uint _parent) {
        _parent = tree.sibling(key);
    }
    function uncle(uint key) public view returns (uint _parent) {
        _parent = tree.uncle(key);
    }

    function insert(uint _key) public {
        tree.insert(_key);
    }
    function remove(uint _key) public {
        tree.remove(_key);
    }
}
