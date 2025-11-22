.class public final Lcc/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/z0;


# static fields
.field public static final a:Lcc/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcc/p;

    invoke-direct {v0}, Lcc/p;-><init>()V

    sput-object v0, Lcc/p;->a:Lcc/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lna/h;)Lcc/a1;
    .locals 2

    .line 1
    invoke-interface {p1}, Lna/h;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcc/a1;->b:Lcc/a1$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcc/a1;->c:Lcc/a1;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcc/a1;->b:Lcc/a1$a;

    .line 16
    .line 17
    new-instance v1, Lcc/k;

    .line 18
    .line 19
    invoke-direct {v1, p1}, Lcc/k;-><init>(Lna/h;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcc/a1$a;->c(Ljava/util/List;)Lcc/a1;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    return-object p1
.end method
