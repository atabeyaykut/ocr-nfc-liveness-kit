.class public final synthetic Leh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;

    iput-object p2, p0, Leh/a;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Leh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;

    iget-object v1, p0, Leh/a;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;

    invoke-static {v0, v1, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;->a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCarBinding;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/ui/CarListModel;Landroid/view/View;)V

    return-void
.end method
