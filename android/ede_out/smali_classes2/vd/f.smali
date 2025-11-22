.class public final Lvd/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lud/c<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ly8/e;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ly8/e;ZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd/f;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lvd/f;->b:Ly8/e;

    iput-boolean p3, p0, Lvd/f;->c:Z

    iput-boolean p4, p0, Lvd/f;->d:Z

    iput-boolean p5, p0, Lvd/f;->e:Z

    iput-boolean p6, p0, Lvd/f;->f:Z

    iput-boolean p7, p0, Lvd/f;->g:Z

    iput-boolean p8, p0, Lvd/f;->h:Z

    iput-boolean p9, p0, Lvd/f;->i:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lvd/f;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final b(Lud/u;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lvd/f;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lvd/b;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lvd/b;-><init>(Lud/u;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lvd/c;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lvd/c;-><init>(Lud/u;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean p1, p0, Lvd/f;->d:Z

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance p1, Lvd/e;

    .line 21
    .line 22
    invoke-direct {p1}, Lvd/e;-><init>()V

    .line 23
    .line 24
    .line 25
    :goto_1
    move-object v0, p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    iget-boolean p1, p0, Lvd/f;->e:Z

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Lvd/a;

    .line 32
    .line 33
    invoke-direct {p1}, Lvd/a;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_2
    iget-object p1, p0, Lvd/f;->b:Ly8/e;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    new-instance v0, Lb9/g;

    .line 42
    .line 43
    invoke-direct {v0}, Lb9/g;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-boolean p1, p0, Lvd/f;->f:Z

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    new-instance p1, La9/c;

    .line 51
    .line 52
    invoke-direct {p1}, La9/c;-><init>()V

    .line 53
    .line 54
    .line 55
    new-instance v0, La9/e;

    .line 56
    .line 57
    invoke-direct {v0, p1}, La9/e;-><init>(La9/c;)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_4
    iget-boolean p1, p0, Lvd/f;->g:Z

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    new-instance p1, Lb9/f;

    .line 66
    .line 67
    invoke-direct {p1}, Lb9/f;-><init>()V

    .line 68
    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_5
    iget-boolean p1, p0, Lvd/f;->h:Z

    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    new-instance p1, Lb9/e;

    .line 76
    .line 77
    invoke-direct {p1}, Lb9/e;-><init>()V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_6
    iget-boolean p1, p0, Lvd/f;->i:Z

    .line 82
    .line 83
    if-eqz p1, :cond_7

    .line 84
    .line 85
    new-instance p1, Lb9/c;

    .line 86
    .line 87
    invoke-direct {p1}, Lb9/c;-><init>()V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_7
    return-object v0
.end method
