.class public final Lj6/a$h;
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
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lj6/a0$e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj6/a$h;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;

.field public static final e:Lt6/c;

.field public static final f:Lt6/c;

.field public static final g:Lt6/c;

.field public static final h:Lt6/c;

.field public static final i:Lt6/c;

.field public static final j:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6/a$h;

    invoke-direct {v0}, Lj6/a$h;-><init>()V

    sput-object v0, Lj6/a$h;->a:Lj6/a$h;

    const-string v0, "arch"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->b:Lt6/c;

    const-string v0, "model"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->c:Lt6/c;

    const-string v0, "cores"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->d:Lt6/c;

    const-string v0, "ram"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->e:Lt6/c;

    const-string v0, "diskSpace"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->f:Lt6/c;

    const-string v0, "simulator"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->g:Lt6/c;

    const-string v0, "state"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->h:Lt6/c;

    const-string v0, "manufacturer"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->i:Lt6/c;

    const-string v0, "modelClass"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$h;->j:Lt6/c;

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
    check-cast p1, Lj6/a0$e$c;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Lj6/a0$e$c;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lj6/a$h;->b:Lt6/c;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lj6/a$h;->c:Lt6/c;

    .line 15
    .line 16
    invoke-virtual {p1}, Lj6/a0$e$c;->e()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lj6/a$h;->d:Lt6/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Lj6/a0$e$c;->b()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-interface {p2, v0, v1}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lj6/a$h;->e:Lt6/c;

    .line 33
    .line 34
    invoke-virtual {p1}, Lj6/a0$e$c;->g()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-interface {p2, v0, v1, v2}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lj6/a$h;->f:Lt6/c;

    .line 42
    .line 43
    invoke-virtual {p1}, Lj6/a0$e$c;->c()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-interface {p2, v0, v1, v2}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 48
    .line 49
    .line 50
    sget-object v0, Lj6/a$h;->g:Lt6/c;

    .line 51
    .line 52
    invoke-virtual {p1}, Lj6/a0$e$c;->i()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-interface {p2, v0, v1}, Lt6/e;->b(Lt6/c;Z)Lt6/e;

    .line 57
    .line 58
    .line 59
    sget-object v0, Lj6/a$h;->h:Lt6/c;

    .line 60
    .line 61
    invoke-virtual {p1}, Lj6/a0$e$c;->h()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-interface {p2, v0, v1}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 66
    .line 67
    .line 68
    sget-object v0, Lj6/a$h;->i:Lt6/c;

    .line 69
    .line 70
    invoke-virtual {p1}, Lj6/a0$e$c;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 75
    .line 76
    .line 77
    sget-object v0, Lj6/a$h;->j:Lt6/c;

    .line 78
    .line 79
    invoke-virtual {p1}, Lj6/a0$e$c;->f()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 84
    .line 85
    .line 86
    return-void
.end method
