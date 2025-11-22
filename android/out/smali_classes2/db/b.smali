.class public final Ldb/b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Integer;",
        "Ldb/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ldb/w;

.field public final synthetic b:[Ldb/h;


# direct methods
.method public constructor <init>(Ldb/w;[Ldb/h;)V
    .locals 0

    iput-object p1, p0, Ldb/b;->a:Ldb/w;

    iput-object p2, p0, Ldb/b;->b:[Ldb/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Ldb/b;->a:Ldb/w;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Ldb/w;->a:Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ldb/h;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    :cond_0
    if-ltz p1, :cond_1

    .line 28
    .line 29
    const-string v0, "<this>"

    .line 30
    .line 31
    iget-object v1, p0, Ldb/b;->b:[Ldb/h;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    array-length v0, v1

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 38
    .line 39
    if-gt p1, v0, :cond_1

    .line 40
    .line 41
    aget-object v0, v1, p1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Ldb/h;->e:Ldb/h;

    .line 45
    .line 46
    :cond_2
    :goto_0
    return-object v0
.end method
