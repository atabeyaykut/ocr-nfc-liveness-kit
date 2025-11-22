.class public final Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lr0/q<",
        "Lag/d;",
        "Lag/c;",
        ">;",
        "Lag/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Lda/d;

.field public final synthetic c:Lda/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;->b:Lda/d;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;->c:Lda/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lr0/q;

    .line 2
    .line 3
    const-string v0, "stateFactory"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;->b:Lda/d;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->q(Lda/d;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lr0/j;

    .line 15
    .line 16
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;->a:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "requireActivity()"

    .line 23
    .line 24
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lx5/a;->c(Landroidx/fragment/app/Fragment;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v1, v3, v4, v2}, Lr0/j;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Object;Landroidx/fragment/app/Fragment;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment$c;->c:Lda/d;

    .line 35
    .line 36
    const-class v3, Lag/c;

    .line 37
    .line 38
    invoke-static {v2, v0, v3, v1, p1}, Landroidx/fragment/app/a;->f(Lda/d;Ljava/lang/Class;Ljava/lang/Class;Lr0/j;Lr0/q;)Lr0/z;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method
