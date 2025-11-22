.class public final Lj6/b$a;
.super Lj6/a0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lj6/a0$e;

.field public h:Lj6/a0$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj6/a0$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lj6/a0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj6/a0$b;-><init>()V

    invoke-virtual {p1}, Lj6/a0;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj6/b$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lj6/a0;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj6/b$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lj6/a0;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lj6/b$a;->c:Ljava/lang/Integer;

    invoke-virtual {p1}, Lj6/a0;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj6/b$a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lj6/a0;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj6/b$a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lj6/a0;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj6/b$a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lj6/a0;->h()Lj6/a0$e;

    move-result-object v0

    iput-object v0, p0, Lj6/b$a;->g:Lj6/a0$e;

    invoke-virtual {p1}, Lj6/a0;->e()Lj6/a0$d;

    move-result-object p1

    iput-object p1, p0, Lj6/b$a;->h:Lj6/a0$d;

    return-void
.end method


# virtual methods
.method public final a()Lj6/b;
    .locals 11

    .line 1
    iget-object v0, p0, Lj6/b$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " sdkVersion"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lj6/b$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " gmpAppId"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Lj6/b$a;->c:Ljava/lang/Integer;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " platform"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    iget-object v1, p0, Lj6/b$a;->d:Ljava/lang/String;

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const-string v1, " installationUuid"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_3
    iget-object v1, p0, Lj6/b$a;->e:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    const-string v1, " buildVersion"

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_4
    iget-object v1, p0, Lj6/b$a;->f:Ljava/lang/String;

    .line 51
    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    const-string v1, " displayVersion"

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    new-instance v0, Lj6/b;

    .line 67
    .line 68
    iget-object v3, p0, Lj6/b$a;->a:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v4, p0, Lj6/b$a;->b:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v1, p0, Lj6/b$a;->c:Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    iget-object v6, p0, Lj6/b$a;->d:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v7, p0, Lj6/b$a;->e:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v8, p0, Lj6/b$a;->f:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v9, p0, Lj6/b$a;->g:Lj6/a0$e;

    .line 85
    .line 86
    iget-object v10, p0, Lj6/b$a;->h:Lj6/a0$d;

    .line 87
    .line 88
    move-object v2, v0

    .line 89
    invoke-direct/range {v2 .. v10}, Lj6/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj6/a0$e;Lj6/a0$d;)V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string v2, "Missing required properties:"

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v1
.end method
