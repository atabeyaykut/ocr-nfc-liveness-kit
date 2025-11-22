.class public final Lng/g;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcom/airbnb/epoxy/p;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lng/g;->a:[Ljava/lang/String;

    iput-object p2, p0, Lng/g;->b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/p;

    .line 2
    .line 3
    const-string v0, "$this$withModels"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lng/g;->a:[Ljava/lang/String;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v3, v1, :cond_0

    .line 15
    .line 16
    aget-object v5, v0, v3

    .line 17
    .line 18
    add-int/lit8 v6, v4, 0x1

    .line 19
    .line 20
    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchHistoryItem_;

    .line 21
    .line 22
    invoke-direct {v7}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchHistoryItem_;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    new-array v8, v8, [Ljava/lang/Number;

    .line 27
    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    aput-object v4, v8, v2

    .line 33
    .line 34
    invoke-interface {v7, v8}, Log/a;->id([Ljava/lang/Number;)Log/a;

    .line 35
    .line 36
    .line 37
    invoke-interface {v7, v5}, Log/a;->historyItem(Ljava/lang/String;)Log/a;

    .line 38
    .line 39
    .line 40
    new-instance v4, Lng/f;

    .line 41
    .line 42
    iget-object v5, p0, Lng/g;->b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 43
    .line 44
    invoke-direct {v4, v5}, Lng/f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v7, v4}, Log/a;->listener(Lx9/l;)Log/a;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v7}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    move v4, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 58
    .line 59
    return-object p1
.end method
