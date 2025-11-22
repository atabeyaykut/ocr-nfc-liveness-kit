.class public final synthetic Lsg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg/b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

    iput-object p2, p0, Lsg/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lsg/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lsg/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lsg/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lsg/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lsg/b;->a:Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;

    iget-object v3, p0, Lsg/b;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;->f(Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
