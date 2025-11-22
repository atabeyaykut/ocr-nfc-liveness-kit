.class public final Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/f;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final b(Le/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lq/b;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-instance v0, Lq/a$a;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lq/a$a;-><init>(I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lq/e;

    .line 25
    .line 26
    invoke-direct {p1, v0, v0}, Lq/e;-><init>(Lq/a;Lq/a;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lq/b;

    if-eqz v1, :cond_1

    check-cast p1, Lq/b;

    iget-object p1, p1, Lq/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lq/b;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lq/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
