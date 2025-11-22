.class public final Lrg/f;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcom/airbnb/epoxy/p;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;)V
    .locals 0

    iput-object p1, p0, Lrg/f;->a:Ljava/util/List;

    iput-object p2, p0, Lrg/f;->b:Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/p;

    .line 2
    .line 3
    const-string v0, "$this$withModels"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lrg/f;->a:Ljava/util/List;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    xor-int/2addr v1, v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-le v1, v2, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel_;

    .line 52
    .line 53
    invoke-direct {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel_;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->getContactName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v5, v6}, Lsg/d;->id(Ljava/lang/CharSequence;)Lsg/d;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->getContactName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v5, v6}, Lsg/d;->institutionContactTitleText(Ljava/lang/String;)Lsg/d;

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v5}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    new-instance v5, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel_;

    .line 74
    .line 75
    invoke-direct {v5}, Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactListItemModel_;-><init>()V

    .line 76
    .line 77
    .line 78
    new-array v6, v2, [Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;->getContactId()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    aput-object v7, v6, v3

    .line 89
    .line 90
    invoke-interface {v5, v6}, Lsg/c;->id([Ljava/lang/Number;)Lsg/c;

    .line 91
    .line 92
    .line 93
    invoke-interface {v5, v4}, Lsg/c;->institutionContact(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionContactModelRealm;)Lsg/c;

    .line 94
    .line 95
    .line 96
    new-instance v4, Lrg/c;

    .line 97
    .line 98
    iget-object v6, p0, Lrg/f;->b:Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;

    .line 99
    .line 100
    invoke-direct {v4, v6}, Lrg/c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v5, v4}, Lsg/c;->phoneListener(Lx9/l;)Lsg/c;

    .line 104
    .line 105
    .line 106
    new-instance v4, Lrg/d;

    .line 107
    .line 108
    invoke-direct {v4, v6}, Lrg/d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v5, v4}, Lsg/c;->addressListener(Lx9/q;)Lsg/c;

    .line 112
    .line 113
    .line 114
    new-instance v4, Lrg/e;

    .line 115
    .line 116
    invoke-direct {v4, v6}, Lrg/e;-><init>(Ltr/gov/turkiye/edevlet/kapisi/services/contact/InstitutionContactFragment;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v5, v4}, Lsg/c;->websiteListener(Lx9/l;)Lsg/c;

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v5}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 127
    .line 128
    return-object p1
.end method
