.class public final Lr4/q6;
.super Lv7/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv7/e<",
        "Lr4/i6;",
        "Lr4/m6;",
        ">;"
    }
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv7/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lr4/i6;

    new-instance v0, Lr4/m6;

    invoke-static {}, Lv7/h;->c()Lv7/h;

    move-result-object v1

    new-instance v2, Lr4/j6;

    invoke-static {}, Lv7/h;->c()Lv7/h;

    move-result-object v3

    invoke-virtual {v3}, Lv7/h;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lr4/j6;-><init>(Landroid/content/Context;Lr4/i6;)V

    invoke-virtual {p1}, Lr4/i6;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lv7/h;->b()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lv7/l;

    invoke-virtual {v1, v4}, Lv7/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv7/l;

    invoke-direct {v0, v3, v1, v2, p1}, Lr4/m6;-><init>(Landroid/content/Context;Lv7/l;Lr4/j6;Ljava/lang/String;)V

    return-object v0
.end method
