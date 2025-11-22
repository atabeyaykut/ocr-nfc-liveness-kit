.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$d;
.super Lc6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc6/a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lda/d;

.field public final synthetic b:Lx9/l;

.field public final synthetic c:Lda/d;


# direct methods
.method public constructor <init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$c;Lda/d;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$d;->a:Lda/d;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$d;->b:Lx9/l;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$d;->c:Lda/d;

    invoke-direct {p0}, Lc6/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/Object;Lda/m;)Ll9/e;
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    const-string p1, "thisRef"

    .line 5
    .line 6
    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "property"

    .line 10
    .line 11
    invoke-static {p2, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/clearcut/d0;->e:Lr0/g1;

    .line 15
    .line 16
    const-class p1, Lqf/c;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$d;->a:Lda/d;

    .line 23
    .line 24
    new-instance v4, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/a;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$d;)V

    .line 27
    .line 28
    .line 29
    iget-object v6, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/editor/EditorServicesFragment$d;->b:Lx9/l;

    .line 30
    .line 31
    move-object v2, p2

    .line 32
    invoke-interface/range {v0 .. v6}, Lr0/g1;->a(Landroidx/fragment/app/Fragment;Lda/m;Lda/d;Lx9/a;Lda/d;Lx9/l;)Lcom/airbnb/mvrx/lifecycleAwareLazy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method
