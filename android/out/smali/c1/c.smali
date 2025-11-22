.class public final Lc1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb1/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc1/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->A(Landroid/net/Uri;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "video"

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;IILv0/h;)Lb1/o$a;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv0/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    if-eq p2, v2, :cond_0

    .line 8
    .line 9
    if-eq p3, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x200

    .line 12
    .line 13
    if-gt p2, v2, :cond_0

    .line 14
    .line 15
    const/16 p2, 0x180

    .line 16
    .line 17
    if-gt p3, p2, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    if-eqz p2, :cond_2

    .line 23
    .line 24
    sget-object p2, Le1/b0;->d:Lv0/g;

    .line 25
    .line 26
    invoke-virtual {p4, p2}, Lv0/h;->c(Lv0/g;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Ljava/lang/Long;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide p2

    .line 38
    const-wide/16 v2, -0x1

    .line 39
    .line 40
    cmp-long p4, p2, v2

    .line 41
    .line 42
    if-nez p4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_1
    if-eqz v0, :cond_2

    .line 47
    .line 48
    new-instance p2, Lb1/o$a;

    .line 49
    .line 50
    new-instance p3, Lp1/b;

    .line 51
    .line 52
    invoke-direct {p3, p1}, Lp1/b;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance p4, Lw0/a$b;

    .line 56
    .line 57
    iget-object v0, p0, Lc1/c;->a:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {p4, v1}, Lw0/a$b;-><init>(Landroid/content/ContentResolver;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1, p4}, Lw0/a;->c(Landroid/content/Context;Landroid/net/Uri;Lw0/b;)Lw0/a;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, p3, p1}, Lb1/o$a;-><init>(Lv0/f;Lcom/bumptech/glide/load/data/d;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const/4 p2, 0x0

    .line 75
    :goto_2
    return-object p2
.end method
