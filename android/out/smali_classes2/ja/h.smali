.class public final Lja/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Lja/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lja/k;


# direct methods
.method public constructor <init>(Lja/k;)V
    .locals 0

    iput-object p1, p0, Lja/h;->a:Lja/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lja/l;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lja/l;->values()[Lja/l;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    array-length v4, v3

    .line 23
    const/4 v5, 0x0

    .line 24
    :goto_0
    if-ge v5, v4, :cond_0

    .line 25
    .line 26
    aget-object v6, v3, v5

    .line 27
    .line 28
    iget-object v7, v6, Lja/l;->a:Llb/f;

    .line 29
    .line 30
    invoke-virtual {v7}, Llb/f;->o()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iget-object v8, p0, Lja/h;->a:Lja/k;

    .line 35
    .line 36
    invoke-static {v8, v7}, Lja/k;->b(Lja/k;Ljava/lang/String;)Lcc/m0;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iget-object v9, v6, Lja/l;->b:Llb/f;

    .line 41
    .line 42
    invoke-virtual {v9}, Llb/f;->o()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-static {v8, v9}, Lja/k;->b(Lja/k;Ljava/lang/String;)Lcc/m0;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v3, Lja/k$a;

    .line 63
    .line 64
    invoke-direct {v3, v0, v1, v2}, Lja/k$a;-><init>(Ljava/util/EnumMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 65
    .line 66
    .line 67
    return-object v3
.end method
