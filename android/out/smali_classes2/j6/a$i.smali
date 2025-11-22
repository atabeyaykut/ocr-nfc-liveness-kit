.class public final Lj6/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lj6/a0$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj6/a$i;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;

.field public static final e:Lt6/c;

.field public static final f:Lt6/c;

.field public static final g:Lt6/c;

.field public static final h:Lt6/c;

.field public static final i:Lt6/c;

.field public static final j:Lt6/c;

.field public static final k:Lt6/c;

.field public static final l:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6/a$i;

    invoke-direct {v0}, Lj6/a$i;-><init>()V

    sput-object v0, Lj6/a$i;->a:Lj6/a$i;

    const-string v0, "generator"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->b:Lt6/c;

    const-string v0, "identifier"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->c:Lt6/c;

    const-string v0, "startedAt"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->d:Lt6/c;

    const-string v0, "endedAt"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->e:Lt6/c;

    const-string v0, "crashed"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->f:Lt6/c;

    const-string v0, "app"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->g:Lt6/c;

    const-string v0, "user"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->h:Lt6/c;

    const-string v0, "os"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->i:Lt6/c;

    const-string v0, "device"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->j:Lt6/c;

    const-string v0, "events"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->k:Lt6/c;

    const-string v0, "generatorType"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$i;->l:Lt6/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lj6/a0$e;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Lj6/a0$e;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lj6/a$i;->b:Lt6/c;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lj6/a0$e;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lj6/a0;->a:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lj6/a$i;->c:Lt6/c;

    .line 25
    .line 26
    invoke-interface {p2, v1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 27
    .line 28
    .line 29
    sget-object v0, Lj6/a$i;->d:Lt6/c;

    .line 30
    .line 31
    invoke-virtual {p1}, Lj6/a0$e;->i()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-interface {p2, v0, v1, v2}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 36
    .line 37
    .line 38
    sget-object v0, Lj6/a$i;->e:Lt6/c;

    .line 39
    .line 40
    invoke-virtual {p1}, Lj6/a0$e;->c()Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 45
    .line 46
    .line 47
    sget-object v0, Lj6/a$i;->f:Lt6/c;

    .line 48
    .line 49
    invoke-virtual {p1}, Lj6/a0$e;->k()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-interface {p2, v0, v1}, Lt6/e;->b(Lt6/c;Z)Lt6/e;

    .line 54
    .line 55
    .line 56
    sget-object v0, Lj6/a$i;->g:Lt6/c;

    .line 57
    .line 58
    invoke-virtual {p1}, Lj6/a0$e;->a()Lj6/a0$e$a;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 63
    .line 64
    .line 65
    sget-object v0, Lj6/a$i;->h:Lt6/c;

    .line 66
    .line 67
    invoke-virtual {p1}, Lj6/a0$e;->j()Lj6/a0$e$f;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 72
    .line 73
    .line 74
    sget-object v0, Lj6/a$i;->i:Lt6/c;

    .line 75
    .line 76
    invoke-virtual {p1}, Lj6/a0$e;->h()Lj6/a0$e$e;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 81
    .line 82
    .line 83
    sget-object v0, Lj6/a$i;->j:Lt6/c;

    .line 84
    .line 85
    invoke-virtual {p1}, Lj6/a0$e;->b()Lj6/a0$e$c;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 90
    .line 91
    .line 92
    sget-object v0, Lj6/a$i;->k:Lt6/c;

    .line 93
    .line 94
    invoke-virtual {p1}, Lj6/a0$e;->d()Lj6/b0;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 99
    .line 100
    .line 101
    sget-object v0, Lj6/a$i;->l:Lt6/c;

    .line 102
    .line 103
    invoke-virtual {p1}, Lj6/a0$e;->f()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-interface {p2, v0, p1}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 108
    .line 109
    .line 110
    return-void
.end method
