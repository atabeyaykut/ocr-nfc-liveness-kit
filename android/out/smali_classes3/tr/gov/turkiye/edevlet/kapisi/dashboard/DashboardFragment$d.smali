.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->M(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lv/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$d;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lv/e;

    .line 2
    .line 3
    const-string v0, "dialog"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->k:[Lda/m;

    .line 12
    .line 13
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$d;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;

    .line 19
    .line 20
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->O(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 24
    .line 25
    return-object p1
.end method
