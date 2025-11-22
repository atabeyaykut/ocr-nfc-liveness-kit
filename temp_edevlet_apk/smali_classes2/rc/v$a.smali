.class public final Lrc/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lrc/l;

.field public final b:Lc5/b4;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lsc/a;

.field public final f:Z

.field public final g:Lx5/a;

.field public final h:Z

.field public final i:Z

.field public final j:Lb8/f;

.field public final k:La0/b;

.field public final l:Lx5/a;

.field public final m:Ljavax/net/SocketFactory;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/i;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lrc/w;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcd/d;

.field public final q:Lrc/f;

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrc/l;

    .line 5
    .line 6
    invoke-direct {v0}, Lrc/l;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lrc/v$a;->a:Lrc/l;

    .line 10
    .line 11
    new-instance v0, Lc5/b4;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v1, v2}, Lc5/b4;-><init>(II)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lrc/v$a;->b:Lc5/b4;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lrc/v$a;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lrc/v$a;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    sget-object v0, Lrc/n;->a:Lrc/n$a;

    .line 35
    .line 36
    sget-object v1, Lsc/c;->a:[B

    .line 37
    .line 38
    const-string v1, "$this$asFactory"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lsc/a;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lsc/a;-><init>(Lrc/n$a;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lrc/v$a;->e:Lsc/a;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lrc/v$a;->f:Z

    .line 52
    .line 53
    sget-object v1, Lrc/b;->g0:Lx5/a;

    .line 54
    .line 55
    iput-object v1, p0, Lrc/v$a;->g:Lx5/a;

    .line 56
    .line 57
    iput-boolean v0, p0, Lrc/v$a;->h:Z

    .line 58
    .line 59
    iput-boolean v0, p0, Lrc/v$a;->i:Z

    .line 60
    .line 61
    sget-object v0, Lrc/k;->i0:Lb8/f;

    .line 62
    .line 63
    iput-object v0, p0, Lrc/v$a;->j:Lb8/f;

    .line 64
    .line 65
    sget-object v0, Lrc/m;->j0:La0/b;

    .line 66
    .line 67
    iput-object v0, p0, Lrc/v$a;->k:La0/b;

    .line 68
    .line 69
    iput-object v1, p0, Lrc/v$a;->l:Lx5/a;

    .line 70
    .line 71
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "SocketFactory.getDefault()"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lrc/v$a;->m:Ljavax/net/SocketFactory;

    .line 81
    .line 82
    sget-object v0, Lrc/v;->D:Ljava/util/List;

    .line 83
    .line 84
    iput-object v0, p0, Lrc/v$a;->n:Ljava/util/List;

    .line 85
    .line 86
    sget-object v0, Lrc/v;->C:Ljava/util/List;

    .line 87
    .line 88
    iput-object v0, p0, Lrc/v$a;->o:Ljava/util/List;

    .line 89
    .line 90
    sget-object v0, Lcd/d;->a:Lcd/d;

    .line 91
    .line 92
    iput-object v0, p0, Lrc/v$a;->p:Lcd/d;

    .line 93
    .line 94
    sget-object v0, Lrc/f;->c:Lrc/f;

    .line 95
    .line 96
    iput-object v0, p0, Lrc/v$a;->q:Lrc/f;

    .line 97
    .line 98
    const/16 v0, 0x2710

    .line 99
    .line 100
    iput v0, p0, Lrc/v$a;->r:I

    .line 101
    .line 102
    iput v0, p0, Lrc/v$a;->s:I

    .line 103
    .line 104
    iput v0, p0, Lrc/v$a;->t:I

    .line 105
    .line 106
    return-void
.end method
