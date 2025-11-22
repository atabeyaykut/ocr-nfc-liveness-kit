.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lhh/f;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lhh/f;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lhh/f;->h:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const v2, -0x174b75c1

    .line 15
    .line 16
    .line 17
    if-eq v1, v2, :cond_7

    .line 18
    .line 19
    const v2, 0x9f52467

    .line 20
    .line 21
    .line 22
    if-eq v1, v2, :cond_6

    .line 23
    .line 24
    const v2, 0x6d78f852

    .line 25
    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    const-string v1, "saveLocation"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_1
    iget-object p1, p1, Lhh/f;->c:Lr0/b;

    .line 42
    .line 43
    instance-of v0, p1, Lr0/d1;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    instance-of v0, p1, Lr0/k;

    .line 51
    .line 52
    :goto_0
    const/4 v2, 0x0

    .line 53
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 58
    .line 59
    const-string v0, "Loading location"

    .line 60
    .line 61
    new-array v4, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p1, v0, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->d:Lv/e;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const/4 v1, 0x0

    .line 78
    :goto_1
    if-eqz v1, :cond_8

    .line 79
    .line 80
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->d:Lv/e;

    .line 81
    .line 82
    if-eqz p1, :cond_8

    .line 83
    .line 84
    invoke-virtual {p1}, Lv/e;->show()V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    instance-of v0, p1, Lr0/c1;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 93
    .line 94
    const-string v0, "Success location"

    .line 95
    .line 96
    new-array v1, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->v:[Lda/m;

    .line 102
    .line 103
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->G()Lhh/g;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->F()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;->d:Lcom/google/android/material/textfield/TextInputEditText;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lhh/g;->d(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    instance-of v0, p1, Lr0/i;

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 130
    .line 131
    const-string v1, "Fail location"

    .line 132
    .line 133
    new-array v2, v2, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    check-cast p1, Lr0/i;

    .line 139
    .line 140
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 141
    .line 142
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    const-string p1, "saveMedia"

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    const-string p1, "saveDescription"

    .line 150
    .line 151
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 155
    .line 156
    return-object p1
.end method
