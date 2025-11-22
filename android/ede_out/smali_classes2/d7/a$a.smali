.class public final Ld7/a$a;
.super Ld7/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld7/d$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ld7/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld7/d$a;-><init>()V

    invoke-virtual {p1}, Ld7/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld7/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ld7/d;->f()I

    move-result v0

    iput v0, p0, Ld7/a$a;->b:I

    invoke-virtual {p1}, Ld7/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld7/a$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ld7/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld7/a$a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ld7/d;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ld7/a$a;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Ld7/d;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ld7/a$a;->f:Ljava/lang/Long;

    invoke-virtual {p1}, Ld7/d;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld7/a$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ld7/a;
    .locals 12

    .line 1
    iget v0, p0, Ld7/a$a;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " registrationStatus"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Ld7/a$a;->e:Ljava/lang/Long;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " expiresInSecs"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Ld7/a$a;->f:Ljava/lang/Long;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " tokenCreationEpochInSecs"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    new-instance v0, Ld7/a;

    .line 37
    .line 38
    iget-object v3, p0, Ld7/a$a;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget v4, p0, Ld7/a$a;->b:I

    .line 41
    .line 42
    iget-object v5, p0, Ld7/a$a;->c:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v6, p0, Ld7/a$a;->d:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p0, Ld7/a$a;->e:Ljava/lang/Long;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    iget-object v1, p0, Ld7/a$a;->f:Ljava/lang/Long;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    iget-object v11, p0, Ld7/a$a;->g:Ljava/lang/String;

    .line 59
    .line 60
    move-object v2, v0

    .line 61
    invoke-direct/range {v2 .. v11}, Ld7/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v2, "Missing required properties:"

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method public final b(I)Ld7/a$a;
    .locals 1

    if-eqz p1, :cond_0

    iput p1, p0, Ld7/a$a;->b:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null registrationStatus"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
