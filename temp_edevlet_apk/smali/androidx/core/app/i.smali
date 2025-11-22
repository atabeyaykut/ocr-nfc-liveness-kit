.class public final synthetic Landroidx/core/app/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(J)F
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/bluetooth/le/BluetoothLeScanner;Ljava/util/ArrayList;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Landroid/app/job/JobParameters;)Landroid/app/job/JobWorkItem;
    .locals 0

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(J)Landroid/graphics/Color;
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/view/MenuItem;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/app/NotificationManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic g(Landroid/app/RemoteAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic h(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public static bridge synthetic i(Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public static bridge synthetic j(Landroid/graphics/ColorSpace;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic k(Landroid/graphics/ColorSpace;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isImportantForAutofill()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/graphics/Color;)[F
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object p0

    return-object p0
.end method
