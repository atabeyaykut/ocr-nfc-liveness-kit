.class public final Lj6/a$k;
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
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lj6/a0$e$d$a$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj6/a$k;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;

.field public static final e:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6/a$k;

    invoke-direct {v0}, Lj6/a$k;-><init>()V

    sput-object v0, Lj6/a$k;->a:Lj6/a$k;

    const-string v0, "baseAddress"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$k;->b:Lt6/c;

    const-string v0, "size"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$k;->c:Lt6/c;

    const-string v0, "name"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$k;->d:Lt6/c;

    const-string v0, "uuid"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$k;->e:Lt6/c;

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
    check-cast p1, Lj6/a0$e$d$a$b$a;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Lj6/a0$e$d$a$b$a;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Lj6/a$k;->b:Lt6/c;

    .line 10
    .line 11
    invoke-interface {p2, v2, v0, v1}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lj6/a$k;->c:Lt6/c;

    .line 15
    .line 16
    invoke-virtual {p1}, Lj6/a0$e$d$a$b$a;->c()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-interface {p2, v0, v1, v2}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lj6/a$k;->d:Lt6/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Lj6/a0$e$d$a$b$a;->b()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lj6/a0$e$d$a$b$a;->d()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    sget-object v0, Lj6/a0;->a:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    sget-object v0, Lj6/a$k;->e:Lt6/c;

    .line 47
    .line 48
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 49
    .line 50
    .line 51
    return-void
.end method
