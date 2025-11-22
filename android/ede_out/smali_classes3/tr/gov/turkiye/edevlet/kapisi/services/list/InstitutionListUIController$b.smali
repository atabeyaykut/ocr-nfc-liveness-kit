.class public final Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;->buildModels(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$b;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;

    .line 2
    .line 3
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;->access$getCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController;)Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$b;->b:Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;->c(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Ll9/m;->a:Ll9/m;

    .line 13
    .line 14
    return-object v0
.end method
