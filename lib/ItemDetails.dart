
 class ItemDetails
{
  final String _name;
  final double _preference;
  final int _points;
  final double _volume;
  final int _utility;
  final String _itemimage;
  final String _details;
  const ItemDetails(this._name,this._utility,this._volume,this._preference,this._itemimage,this._details,this._points);
  double getPreference()
  {
    return this._preference;
  }
  double getVolume()
  {
    return this._volume;
  }
  int getPoints()
  {
    return this._points;
  }
  int getUtility()
  {
    return this._utility;
  }
  String getImage()
  {
    return this._itemimage;
  }
  String getDetails()
  {
    return this._details;
  }
  String getName()
  {
    return this._name;
  }
}