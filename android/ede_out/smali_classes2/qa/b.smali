.class public final Lqa/b;
.super Lma/e1;
.source "SourceFile"


# static fields
.field public static final c:Lqa/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqa/b;

    invoke-direct {v0}, Lqa/b;-><init>()V

    sput-object v0, Lqa/b;->c:Lqa/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "protected_and_package"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lma/e1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lma/e1;)Ljava/lang/Integer;
    .locals 3

    .line 1
    const-string v0, "visibility"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object v0, Lma/d1$b;->c:Lma/d1$b;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :cond_1
    sget-object v0, Lma/d1;->a:Ln9/b;

    .line 25
    .line 26
    sget-object v0, Lma/d1$e;->c:Lma/d1$e;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    .line 31
    sget-object v0, Lma/d1$f;->c:Lma/d1$f;

    .line 32
    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    :cond_2
    const/4 v1, 0x1

    .line 36
    :cond_3
    if-eqz v1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 v2, -0x1

    .line 40
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "protected/*protected and package*/"

    return-object v0
.end method

.method public final c()Lma/e1;
    .locals 1

    sget-object v0, Lma/d1$g;->c:Lma/d1$g;

    return-object v0
.end method
