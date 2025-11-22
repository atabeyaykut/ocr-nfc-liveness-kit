.class public final Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;->a:Lcom/afollestad/materialdialogs/internal/main/DialogScrollView$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;

    .line 2
    .line 3
    const-string v0, "$receiver"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/internal/main/DialogScrollView;->a()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "getChildAt(0)"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x1

    .line 42
    if-le v1, v2, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    :cond_0
    if-nez v0, :cond_2

    .line 46
    .line 47
    :cond_1
    const/4 v3, 0x2

    .line 48
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 52
    .line 53
    return-object p1
.end method
