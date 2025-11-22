.class public final Lma/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma/d1$e;,
        Lma/d1$f;,
        Lma/d1$h;,
        Lma/d1$b;,
        Lma/d1$g;,
        Lma/d1$d;,
        Lma/d1$a;,
        Lma/d1$c;,
        Lma/d1$i;
    }
.end annotation


# static fields
.field public static final a:Ln9/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ln9/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ln9/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lma/d1$f;->c:Lma/d1$f;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ln9/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lma/d1$e;->c:Lma/d1$e;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ln9/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    sget-object v1, Lma/d1$b;->c:Lma/d1$b;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v1, v3}, Ln9/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    sget-object v1, Lma/d1$g;->c:Lma/d1$g;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3}, Ln9/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object v1, Lma/d1$h;->c:Lma/d1$h;

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v1, v3}, Ln9/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ln9/b;->b()V

    .line 47
    .line 48
    .line 49
    iput-boolean v2, v0, Ln9/b;->m:Z

    .line 50
    .line 51
    sput-object v0, Lma/d1;->a:Ln9/b;

    .line 52
    .line 53
    return-void
.end method
