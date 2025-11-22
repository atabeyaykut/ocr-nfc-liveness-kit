package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuWrapperICS extends BaseMenuWrapper implements Menu {
    private final SupportMenu mWrappedObject;

    public MenuWrapperICS(Context context, SupportMenu supportMenu) {
        super(context);
        if (supportMenu == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.mWrappedObject = supportMenu;
    }

    @Override // android.view.Menu
    public MenuItem add(int r22) {
        return getMenuItemWrapper(this.mWrappedObject.add(r22));
    }

    @Override // android.view.Menu
    public MenuItem add(int r22, int r32, int r42, int r52) {
        return getMenuItemWrapper(this.mWrappedObject.add(r22, r32, r42, r52));
    }

    @Override // android.view.Menu
    public MenuItem add(int r22, int r32, int r42, CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(r22, r32, r42, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return getMenuItemWrapper(this.mWrappedObject.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int r13, int r14, int r15, ComponentName componentName, Intent[] intentArr, Intent intent, int r19, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int r32 = this.mWrappedObject.addIntentOptions(r13, r14, r15, componentName, intentArr, intent, r19, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int r52 = 0; r52 < length; r52++) {
                menuItemArr[r52] = getMenuItemWrapper(menuItemArr2[r52]);
            }
        }
        return r32;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int r22) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(r22));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int r22, int r32, int r42, int r52) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(r22, r32, r42, r52));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int r22, int r32, int r42, CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(r22, r32, r42, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return getSubMenuWrapper(this.mWrappedObject.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        internalClear();
        this.mWrappedObject.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.mWrappedObject.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int r22) {
        return getMenuItemWrapper(this.mWrappedObject.findItem(r22));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int r22) {
        return getMenuItemWrapper(this.mWrappedObject.getItem(r22));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.mWrappedObject.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int r22, KeyEvent keyEvent) {
        return this.mWrappedObject.isShortcutKey(r22, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int r22, int r32) {
        return this.mWrappedObject.performIdentifierAction(r22, r32);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int r22, KeyEvent keyEvent, int r42) {
        return this.mWrappedObject.performShortcut(r22, keyEvent, r42);
    }

    @Override // android.view.Menu
    public void removeGroup(int r22) {
        internalRemoveGroup(r22);
        this.mWrappedObject.removeGroup(r22);
    }

    @Override // android.view.Menu
    public void removeItem(int r22) {
        internalRemoveItem(r22);
        this.mWrappedObject.removeItem(r22);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int r22, boolean z10, boolean z11) {
        this.mWrappedObject.setGroupCheckable(r22, z10, z11);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int r22, boolean z10) {
        this.mWrappedObject.setGroupEnabled(r22, z10);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int r22, boolean z10) {
        this.mWrappedObject.setGroupVisible(r22, z10);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z10) {
        this.mWrappedObject.setQwertyMode(z10);
    }

    @Override // android.view.Menu
    public int size() {
        return this.mWrappedObject.size();
    }
}
