.class public final Ldb/u$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/ArrayList;

.field public c:Ll9/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/g<",
            "Ljava/lang/String;",
            "Ldb/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldb/u$a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ldb/u$a$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Ldb/u$a$a;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ll9/g;

    .line 14
    .line 15
    const-string p2, "V"

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p2, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Ldb/u$a$a;->c:Ll9/g;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ldb/h;)V
    .locals 4

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldb/u$a$a;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    array-length v1, p2

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    new-instance v1, Lm9/z;

    .line 19
    .line 20
    new-instance v2, Lm9/l;

    .line 21
    .line 22
    invoke-direct {v2, p2}, Lm9/l;-><init>([Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lm9/z;-><init>(Lx9/a;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    invoke-static {p2}, Lb8/f;->V(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/16 v2, 0x10

    .line 37
    .line 38
    if-ge p2, v2, :cond_2

    .line 39
    .line 40
    const/16 p2, 0x10

    .line 41
    .line 42
    :cond_2
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {v2, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lm9/z;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :goto_1
    move-object v1, p2

    .line 52
    check-cast v1, Lm9/a0;

    .line 53
    .line 54
    invoke-virtual {v1}, Lm9/a0;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lm9/a0;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lm9/y;

    .line 65
    .line 66
    iget v3, v1, Lm9/y;->a:I

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v1, v1, Lm9/y;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ldb/h;

    .line 75
    .line 76
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance p2, Ldb/w;

    .line 81
    .line 82
    invoke-direct {p2, v2}, Ldb/w;-><init>(Ljava/util/LinkedHashMap;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    new-instance v1, Ll9/g;

    .line 86
    .line 87
    invoke-direct {v1, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ldb/h;)V
    .locals 3

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lm9/z;

    .line 7
    .line 8
    new-instance v1, Lm9/l;

    .line 9
    .line 10
    invoke-direct {v1, p2}, Lm9/l;-><init>([Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lm9/z;-><init>(Lx9/a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p2}, Lb8/f;->V(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/16 v1, 0x10

    .line 25
    .line 26
    if-ge p2, v1, :cond_0

    .line 27
    .line 28
    const/16 p2, 0x10

    .line 29
    .line 30
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lm9/z;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    :goto_0
    move-object v0, p2

    .line 40
    check-cast v0, Lm9/a0;

    .line 41
    .line 42
    invoke-virtual {v0}, Lm9/a0;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Lm9/a0;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lm9/y;

    .line 53
    .line 54
    iget v2, v0, Lm9/y;->a:I

    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v0, v0, Lm9/y;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ldb/h;

    .line 63
    .line 64
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance p2, Ldb/w;

    .line 69
    .line 70
    invoke-direct {p2, v1}, Ldb/w;-><init>(Ljava/util/LinkedHashMap;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ll9/g;

    .line 74
    .line 75
    invoke-direct {v0, p1, p2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Ldb/u$a$a;->c:Ll9/g;

    .line 79
    .line 80
    return-void
.end method

.method public final c(Ltb/c;)V
    .locals 2

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ltb/c;->q()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "type.desc"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ll9/g;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Ldb/u$a$a;->c:Ll9/g;

    .line 22
    .line 23
    return-void
.end method
