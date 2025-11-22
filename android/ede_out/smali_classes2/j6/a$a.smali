.class public final Lj6/a$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lj6/a0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj6/a$a;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;

.field public static final e:Lt6/c;

.field public static final f:Lt6/c;

.field public static final g:Lt6/c;

.field public static final h:Lt6/c;

.field public static final i:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6/a$a;

    invoke-direct {v0}, Lj6/a$a;-><init>()V

    sput-object v0, Lj6/a$a;->a:Lj6/a$a;

    const-string v0, "pid"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->b:Lt6/c;

    const-string v0, "processName"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->c:Lt6/c;

    const-string v0, "reasonCode"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->d:Lt6/c;

    const-string v0, "importance"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->e:Lt6/c;

    const-string v0, "pss"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->f:Lt6/c;

    const-string v0, "rss"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->g:Lt6/c;

    const-string v0, "timestamp"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->h:Lt6/c;

    const-string v0, "traceFile"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$a;->i:Lt6/c;

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
    check-cast p1, Lj6/a0$a;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Lj6/a0$a;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lj6/a$a;->b:Lt6/c;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lj6/a$a;->c:Lt6/c;

    .line 15
    .line 16
    invoke-virtual {p1}, Lj6/a0$a;->c()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lj6/a$a;->d:Lt6/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Lj6/a0$a;->e()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-interface {p2, v0, v1}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lj6/a$a;->e:Lt6/c;

    .line 33
    .line 34
    invoke-virtual {p1}, Lj6/a0$a;->a()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-interface {p2, v0, v1}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lj6/a$a;->f:Lt6/c;

    .line 42
    .line 43
    invoke-virtual {p1}, Lj6/a0$a;->d()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-interface {p2, v0, v1, v2}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 48
    .line 49
    .line 50
    sget-object v0, Lj6/a$a;->g:Lt6/c;

    .line 51
    .line 52
    invoke-virtual {p1}, Lj6/a0$a;->f()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-interface {p2, v0, v1, v2}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 57
    .line 58
    .line 59
    sget-object v0, Lj6/a$a;->h:Lt6/c;

    .line 60
    .line 61
    invoke-virtual {p1}, Lj6/a0$a;->g()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-interface {p2, v0, v1, v2}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 66
    .line 67
    .line 68
    sget-object v0, Lj6/a$a;->i:Lt6/c;

    .line 69
    .line 70
    invoke-virtual {p1}, Lj6/a0$a;->h()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 75
    .line 76
    .line 77
    return-void
.end method
