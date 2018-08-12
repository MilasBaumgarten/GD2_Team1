using UnityEditor;

[CustomEditor(typeof(ObjectMovement), true)]
public class ObjectMovementEditor : Editor {

    public override void OnInspectorGUI()
    {
        using (var cc = new EditorGUI.ChangeCheckScope())
        {
            base.OnInspectorGUI();
            if(cc.changed)
            {
                var pt = target as ObjectMovement;
                pt.PerformTransform(pt.previewPosition);
            }
        }
    }

}
