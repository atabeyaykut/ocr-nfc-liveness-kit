.class public final Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;
.super Lcom/airbnb/epoxy/Typed3EpoxyController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/epoxy/Typed3EpoxyController<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;",
        "Landroid/content/Context;",
        "Ljava/util/List<",
        "+",
        "Ljg/a;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ,\u0010\n\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0014R\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;",
        "Lcom/airbnb/epoxy/Typed3EpoxyController;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;",
        "Landroid/content/Context;",
        "",
        "Ljg/a;",
        "profileContactData",
        "profileContext",
        "profileOperationList",
        "Ll9/m;",
        "buildModels",
        "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;",
        "adapterCallbacks",
        "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;",
        "<init>",
        "(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;)V",
        "a",
        "ui-profile_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;)V
    .locals 1

    const-string v0, "adapterCallbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/airbnb/epoxy/Typed3EpoxyController;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;

    return-void
.end method

.method public static final synthetic access$getAdapterCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;
    .locals 0

    iget-object p0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;->adapterCallbacks:Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic buildModels(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    check-cast p2, Landroid/content/Context;

    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;->buildModels(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public buildModels(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljg/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;

    .line 2
    .line 3
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel_;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "profileContactCard"

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lkg/c;->id(Ljava/lang/CharSequence;)Lkg/c;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lkg/c;->profileContactCardData(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)Lkg/c;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p2}, Lkg/c;->context(Landroid/content/Context;)Lkg/c;

    .line 15
    .line 16
    .line 17
    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$b;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Lkg/c;->listener(Lx9/a;)Lkg/c;

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, v0}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    check-cast p3, Ljava/lang/Iterable;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {p3}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Ljg/a;

    .line 56
    .line 57
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;

    .line 58
    .line 59
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    new-array v1, v1, [Ljava/lang/Number;

    .line 64
    .line 65
    iget v2, p3, Ljg/a;->a:I

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    aput-object v2, v1, v3

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;->id([Ljava/lang/Number;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p3}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;->profilePageItem(Ljg/a;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$c;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;->listener(Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel_;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const/4 p1, 0x0

    .line 96
    :cond_1
    new-instance p2, Lkg/b;

    .line 97
    .line 98
    invoke-direct {p2}, Lkg/b;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lkg/b;->b()Lkg/b;

    .line 102
    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Lkg/b;->c(Ljava/util/ArrayList;)Lkg/b;

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-interface {p0, p2}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
