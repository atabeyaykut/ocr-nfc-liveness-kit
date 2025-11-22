.class public final Lya/g$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/g;-><init>(Lp4/g7;Lma/j;Lcb/y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcb/x;",
        "Lza/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lya/g;


# direct methods
.method public constructor <init>(Lya/g;)V
    .locals 0

    iput-object p1, p0, Lya/g$a;->a:Lya/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcb/x;

    .line 2
    .line 3
    const-string v0, "typeParameter"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lya/g$a;->a:Lya/g;

    .line 9
    .line 10
    iget-object v1, v0, Lya/g;->d:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    new-instance v2, Lza/z;

    .line 25
    .line 26
    iget-object v3, v0, Lya/g;->a:Lp4/g7;

    .line 27
    .line 28
    const-string v4, "<this>"

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lp4/g7;

    .line 34
    .line 35
    iget-object v5, v3, Lp4/g7;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lya/c;

    .line 38
    .line 39
    iget-object v3, v3, Lp4/g7;->c:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Ll9/e;

    .line 42
    .line 43
    invoke-direct {v4, v5, v0, v3}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v0, Lya/g;->b:Lma/j;

    .line 47
    .line 48
    invoke-interface {v3}, Lna/a;->getAnnotations()Lna/h;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v4, v5}, Lya/b;->b(Lp4/g7;Lna/h;)Lp4/g7;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget v0, v0, Lya/g;->c:I

    .line 57
    .line 58
    add-int/2addr v0, v1

    .line 59
    invoke-direct {v2, v4, p1, v0, v3}, Lza/z;-><init>(Lp4/g7;Lcb/x;ILma/j;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    return-object v2
.end method
