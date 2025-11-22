.class public abstract Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactTitleBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactTitleBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "",
        "institutionContactTitleText",
        "Ljava/lang/String;",
        "getInstitutionContactTitleText",
        "()Ljava/lang/String;",
        "setInstitutionContactTitleText",
        "(Ljava/lang/String;)V",
        "<init>",
        "()V",
        "ui-services_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private institutionContactTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactTitleBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactTitleBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactTitleBinding;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;->institutionContactTitleText:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactTitleBinding;->b:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_2

    const-string v0, "-"

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;->institutionContactTitleText:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d0091

    return v0
.end method

.method public final getInstitutionContactTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;->institutionContactTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public final setInstitutionContactTitleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;->institutionContactTitleText:Ljava/lang/String;

    return-void
.end method
