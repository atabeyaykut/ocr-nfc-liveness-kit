.class public final Lo4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv7/l;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {p1}, Lv7/c;->a(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lv7/g;->a()Lv7/g;

    move-result-object p1

    new-instance v0, Lo4/l;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lo4/l;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lv7/g;->b(Ljava/util/concurrent/Callable;)Lh5/z;

    invoke-static {}, Lv7/g;->a()Lv7/g;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lo4/k;

    invoke-direct {p3, p2, v1}, Lo4/k;-><init>(Lv7/l;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lv7/g;->b(Ljava/util/concurrent/Callable;)Lh5/z;

    return-void
.end method
