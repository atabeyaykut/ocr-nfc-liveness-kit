.class public final Lfd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Led/z;)Z
    .locals 5

    .line 1
    sget-object v0, Lfd/d;->c:Led/z;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfd/l;->a:Led/h;

    .line 7
    .line 8
    iget-object v1, p0, Led/z;->a:Led/h;

    .line 9
    .line 10
    invoke-static {v1, v0}, Led/h;->z(Led/h;Led/h;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lfd/l;->b:Led/h;

    .line 19
    .line 20
    invoke-static {v1, v0}, Led/h;->z(Led/h;Led/h;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x2

    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    add-int/2addr v0, v3

    .line 29
    const/4 p0, 0x0

    .line 30
    invoke-static {v1, v0, p0, v4}, Led/h;->E(Led/h;III)Led/h;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0}, Led/z;->t()Ljava/lang/Character;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Led/h;->r()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ne p0, v4, :cond_2

    .line 46
    .line 47
    sget-object v1, Led/h;->d:Led/h;

    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-virtual {v1}, Led/h;->G()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, ".class"

    .line 54
    .line 55
    invoke-static {p0, v0, v3}, Lmc/j;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    xor-int/2addr p0, v3

    .line 60
    return p0
.end method
