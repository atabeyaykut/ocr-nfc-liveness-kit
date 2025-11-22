.class public final Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;->buildModels(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$d;->a:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 2
    .line 3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$d;->a:Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;

    .line 4
    .line 5
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;->access$getCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController;)Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;->a(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 15
    .line 16
    return-object p1
.end method
