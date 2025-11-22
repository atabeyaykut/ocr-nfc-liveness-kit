.class public final Lj6/a$j;
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
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lj6/a0$e$d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lj6/a$j;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;

.field public static final e:Lt6/c;

.field public static final f:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj6/a$j;

    invoke-direct {v0}, Lj6/a$j;-><init>()V

    sput-object v0, Lj6/a$j;->a:Lj6/a$j;

    const-string v0, "execution"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$j;->b:Lt6/c;

    const-string v0, "customAttributes"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$j;->c:Lt6/c;

    const-string v0, "internalKeys"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$j;->d:Lt6/c;

    const-string v0, "background"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$j;->e:Lt6/c;

    const-string v0, "uiOrientation"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lj6/a$j;->f:Lt6/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lj6/a0$e$d$a;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Lj6/a0$e$d$a;->c()Lj6/a0$e$d$a$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lj6/a$j;->b:Lt6/c;

    .line 10
    .line 11
    invoke-interface {p2, v1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lj6/a$j;->c:Lt6/c;

    .line 15
    .line 16
    invoke-virtual {p1}, Lj6/a0$e$d$a;->b()Lj6/b0;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lj6/a$j;->d:Lt6/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Lj6/a0$e$d$a;->d()Lj6/b0;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 30
    .line 31
    .line 32
    sget-object v0, Lj6/a$j;->e:Lt6/c;

    .line 33
    .line 34
    invoke-virtual {p1}, Lj6/a0$e$d$a;->a()Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p2, v0, v1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 39
    .line 40
    .line 41
    sget-object v0, Lj6/a$j;->f:Lt6/c;

    .line 42
    .line 43
    invoke-virtual {p1}, Lj6/a0$e$d$a;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-interface {p2, v0, p1}, Lt6/e;->c(Lt6/c;I)Lt6/e;

    .line 48
    .line 49
    .line 50
    return-void
.end method
