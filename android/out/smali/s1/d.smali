.class public final synthetic Ls1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ls1/g;

.field public final synthetic b:Z

.field public final synthetic c:Ld2/b;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ls1/g;ZLd2/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/d;->a:Ls1/g;

    iput-boolean p2, p0, Ls1/d;->b:Z

    iput-object p3, p0, Ls1/d;->c:Ld2/b;

    iput p4, p0, Ls1/d;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Ls1/d;->a:Ls1/g;

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls1/d;->c:Ld2/b;

    .line 9
    .line 10
    const-string v1, "$image"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p0, Ls1/d;->b:Z

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p1, Ls1/g;->c:Lx9/l;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget-object v3, p1, Ls1/g;->e:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget v4, p0, Ls1/d;->d:I

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    new-instance v1, Ls1/f;

    .line 40
    .line 41
    invoke-direct {v1, p1, v0, v4}, Ls1/f;-><init>(Ls1/g;Ld2/b;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ls1/f;->run()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Ls1/g;->f:Lx9/l;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-interface {p1, v3}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    if-eqz v2, :cond_1

    .line 56
    .line 57
    new-instance v1, Ls1/e;

    .line 58
    .line 59
    invoke-direct {v1, p1, v0, v4}, Ls1/e;-><init>(Ls1/g;Ld2/b;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ls1/e;->run()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p1, Ls1/g;->f:Lx9/l;

    .line 66
    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    invoke-interface {p1, v3}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method
