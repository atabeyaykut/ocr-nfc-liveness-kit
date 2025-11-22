.class public final Ls4/c9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls4/w8;


# instance fields
.field public final a:Lc6/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lc6/t;

.field public final c:Ls4/s8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls4/s8;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ls4/c9;->c:Ls4/s8;

    .line 5
    .line 6
    sget-object p2, Ls2/a;->e:Ls2/a;

    .line 7
    .line 8
    invoke-static {p1}, Lu2/w;->b(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lu2/w;->a()Lu2/w;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lu2/w;->c(Ls2/a;)Lu2/t;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    sget-object p2, Ls2/a;->d:Ljava/util/Set;

    .line 20
    .line 21
    new-instance v0, Lr2/b;

    .line 22
    .line 23
    const-string v1, "json"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Lc6/t;

    .line 35
    .line 36
    new-instance v0, Lo4/n;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lo4/n;-><init>(Lu2/t;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, v0}, Lc6/t;-><init>(La7/b;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Ls4/c9;->a:Lc6/t;

    .line 45
    .line 46
    :cond_0
    new-instance p2, Lc6/t;

    .line 47
    .line 48
    new-instance v0, Lo4/o;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Lo4/o;-><init>(Lu2/t;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, v0}, Lc6/t;-><init>(La7/b;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Ls4/c9;->b:Lc6/t;

    .line 57
    .line 58
    return-void
.end method

.method public static b(Ls4/s8;Ls4/a9;)Lr2/a;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls4/s8;->a()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1, p0}, Ls4/a9;->a(I)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p1, p1, Ls4/a9;->a:I

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lr2/a;

    .line 14
    .line 15
    sget-object v0, Lr2/d;->a:Lr2/d;

    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Lr2/a;-><init>(Ljava/lang/Object;Lr2/d;)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Lr2/a;

    .line 22
    .line 23
    sget-object v0, Lr2/d;->b:Lr2/d;

    .line 24
    .line 25
    invoke-direct {p1, p0, v0}, Lr2/a;-><init>(Ljava/lang/Object;Lr2/d;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method


# virtual methods
.method public final a(Ls4/a9;)V
    .locals 2

    iget-object v0, p0, Ls4/c9;->c:Ls4/s8;

    invoke-virtual {v0}, Ls4/s8;->a()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ls4/c9;->a:Lc6/t;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ls4/c9;->b:Lc6/t;

    :goto_0
    invoke-virtual {v1}, Lc6/t;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/f;

    invoke-static {v0, p1}, Ls4/c9;->b(Ls4/s8;Ls4/a9;)Lr2/a;

    move-result-object p1

    invoke-interface {v1, p1}, Lr2/f;->a(Lr2/a;)V

    :cond_1
    return-void
.end method
