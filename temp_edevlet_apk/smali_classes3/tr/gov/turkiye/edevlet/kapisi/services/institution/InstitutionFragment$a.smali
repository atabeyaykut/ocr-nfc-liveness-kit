.class public final synthetic Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;
.super Lkotlin/jvm/internal/g;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/g;",
        "Lx9/l<",
        "Landroid/view/View;",
        "Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;-><init>()V

    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    const-string v3, "bind"

    const-string v4, "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/g;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    const-string v0, "p0"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;->bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionBinding;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
