.class public final synthetic Landroidx/core/content/pm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/os/Message;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Message;->setAsynchronous(Z)V

    return-void
.end method

.method public static bridge synthetic b(Landroid/os/PersistableBundle;Z)V
    .locals 1

    const-string v0, "extraLongLived"

    invoke-virtual {p0, v0, p1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
