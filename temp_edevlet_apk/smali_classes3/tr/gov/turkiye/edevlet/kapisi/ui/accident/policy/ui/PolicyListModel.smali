.class public abstract Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
        "policyItem",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
        "getPolicyItem",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;",
        "setPolicyItem",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;)V",
        "",
        "isDivider",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "setDivider",
        "(Ljava/lang/String;)V",
        "<init>",
        "()V",
        "ui-mobile-accident_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public isDivider:Ljava/lang/String;

.field public policyItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->getPolicyItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->getProductCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->getPolicyItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->getPolicyItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->getEndDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lge/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->isDivider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIDE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPolicyBinding;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d00a5

    return v0
.end method

.method public final getPolicyItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->policyItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "policyItem"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isDivider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->isDivider:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "isDivider"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setDivider(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->isDivider:Ljava/lang/String;

    return-void
.end method

.method public final setPolicyItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel;->policyItem:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    return-void
.end method
