.class public final Lx0/l$e;
.super Lx0/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx0/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lv0/a;)Z
    .locals 1

    sget-object v0, Lv0/a;->b:Lv0/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(ZLv0/a;Lv0/c;)Z
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lv0/a;->c:Lv0/a;

    if-eq p2, p1, :cond_1

    :cond_0
    sget-object p1, Lv0/a;->a:Lv0/a;

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lv0/c;->b:Lv0/c;

    if-ne p3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
