.class public final Lud/l$b;
.super Lud/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lud/l<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lud/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud/c<",
            "TResponseT;",
            "Lud/b<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Lud/b0;Lrc/d$a;Lud/f;Lud/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lud/l;-><init>(Lud/b0;Lrc/d$a;Lud/f;)V

    iput-object p4, p0, Lud/l$b;->d:Lud/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lud/l$b;->e:Z

    return-void
.end method


# virtual methods
.method public final c(Lud/u;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lud/l$b;->d:Lud/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lud/c;->b(Lud/u;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lud/b;

    .line 8
    .line 9
    array-length v0, p2

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    aget-object p2, p2, v0

    .line 13
    .line 14
    check-cast p2, Lp9/d;

    .line 15
    .line 16
    :try_start_0
    iget-boolean v0, p0, Lud/l$b;->e:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lnc/j;

    .line 21
    .line 22
    invoke-static {p2}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Lnc/j;-><init>(ILp9/d;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lud/o;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lud/o;-><init>(Lud/b;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lnc/j;->D(Lx9/l;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lud/q;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Lud/q;-><init>(Lnc/j;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v1}, Lud/b;->n0(Lud/d;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lnc/j;->m()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lnc/j;

    .line 51
    .line 52
    invoke-static {p2}, Lc5/w;->x(Lp9/d;)Lp9/d;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v0, v1, v2}, Lnc/j;-><init>(ILp9/d;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lud/n;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Lud/n;-><init>(Lud/b;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lnc/j;->D(Lx9/l;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Lud/p;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lud/p;-><init>(Lnc/j;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v1}, Lud/b;->n0(Lud/d;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lnc/j;->m()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object p1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    invoke-static {p1, p2}, Lud/t;->a(Ljava/lang/Exception;Lp9/d;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method
