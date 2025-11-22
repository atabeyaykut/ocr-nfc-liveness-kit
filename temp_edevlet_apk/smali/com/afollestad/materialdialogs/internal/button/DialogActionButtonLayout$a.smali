.class public final Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$a;->a:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$a;->a:Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Lz/a;->getDialog()Lv/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout$a;->b:I

    .line 11
    .line 12
    const-string v1, "which"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/appcompat/graphics/drawable/a;->j(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lg/d;->c(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_0
    iget-object v0, p1, Lv/e;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p1, Lv/e;->j:Ljava/util/ArrayList;

    .line 34
    .line 35
    :goto_0
    invoke-static {v0, p1}, Lc5/w;->y(Ljava/util/ArrayList;Lv/e;)V

    .line 36
    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    iget-object v0, p1, Lv/e;->h:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-static {v0, p1}, Lc5/w;->y(Ljava/util/ArrayList;Lv/e;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p1, Lv/e;->f:Lcom/afollestad/materialdialogs/internal/main/DialogLayout;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/main/DialogLayout;->getContentLayout()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;->getRecyclerView()Lcom/afollestad/materialdialogs/internal/list/DialogRecyclerView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move-object v0, v1

    .line 63
    :goto_1
    instance-of v2, v0, Ly/a;

    .line 64
    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move-object v1, v0

    .line 69
    :goto_2
    check-cast v1, Ly/a;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-interface {v1}, Ly/a;->a()V

    .line 74
    .line 75
    .line 76
    :cond_5
    :goto_3
    iget-boolean v0, p1, Lv/e;->b:Z

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 81
    .line 82
    .line 83
    :cond_6
    return-void
.end method
