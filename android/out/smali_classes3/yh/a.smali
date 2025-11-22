.class public final synthetic Lyh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    return-void
.end method


# virtual methods
.method public final onPositiveButtonClick(Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->j:[Lda/m;

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    iget-object v1, p0, Lyh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v2, "dd.MM.yyyy"

    .line 13
    .line 14
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    .line 20
    .line 21
    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p1, Ljava/lang/Long;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    new-instance p1, Ljava/util/Date;

    .line 31
    .line 32
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/FragmentCardInfoBinding;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
