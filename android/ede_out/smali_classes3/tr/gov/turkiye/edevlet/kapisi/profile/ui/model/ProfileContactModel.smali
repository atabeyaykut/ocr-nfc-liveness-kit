.class public abstract Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\t\u001a\u00020\u0003H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0014J\u000c\u0010\r\u001a\u00020\u000c*\u00020\u0002H\u0016R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;",
        "",
        "hasTwoFactorLoginRight",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;",
        "personalInfo",
        "isPhoneNumberVerifiedBySMS",
        "isPhoneNumberVerifiedById",
        "isLoginWithTwoFactor",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;",
        "profileContactCardData",
        "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;",
        "getProfileContactCardData",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;",
        "setProfileContactCardData",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "Lkotlin/Function0;",
        "listener",
        "Lx9/a;",
        "getListener",
        "()Lx9/a;",
        "setListener",
        "(Lx9/a;)V",
        "<init>",
        "()V",
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
.field public context:Landroid/content/Context;

.field public listener:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getListener()Lx9/a;

    move-result-object p0

    invoke-interface {p0}, Lx9/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final hasTwoFactorLoginRight()Z
    .locals 3

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getProfileContactCardData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getHasTwoFactorUsageRight()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final isLoginWithTwoFactor()Z
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getProfileContactCardData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->isTwoFactorLogin()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isPhoneNumberVerifiedById(Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getHasIDVerifiedPhoneNumber()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "E"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final isPhoneNumberVerifiedBySMS(Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getHasSMSVerifiedPhoneNumber()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "E"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;)V
    .locals 11

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getProfileContactCardData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object v0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getUserProfileInfo()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactPersonalData;->getPersonalInformation()Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getProfileContactCardData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    move-result-object v2

    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;->getNameSurname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getEMail()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const-string v5, "-"

    if-eqz v2, :cond_4

    move-object v2, v5

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getEMail()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v1

    :goto_4
    iget-object v6, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->hasTwoFactorLoginRight()Z

    move-result v2

    const v6, 0x7f130224

    iget-object v7, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->isPhoneNumberVerifiedById(Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getMobilePhoneNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v2, 0x1

    :goto_7
    const v8, 0x7f06011b

    const v9, 0x7f06011a

    iget-object v10, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f130225

    :goto_8
    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d

    :cond_a
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getMobilePhoneCountryCode()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_b
    move-object v5, v1

    :goto_9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getMobilePhoneNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_c
    move-object v5, v1

    :goto_a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->isPhoneNumberVerifiedById(Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)Z

    move-result v2

    const v5, 0x7f130223

    if-eqz v2, :cond_e

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->hasTwoFactorLoginRight()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_c

    :cond_d
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    :goto_b
    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_c
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_e
    invoke-direct {p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->isPhoneNumberVerifiedBySMS(Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;)Z

    move-result v2

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_f

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->hasTwoFactorLoginRight()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f130226

    goto :goto_b

    :cond_f
    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->hasTwoFactorLoginRight()Z

    move-result v2

    const v5, 0x7f130227

    if-eqz v2, :cond_10

    invoke-direct {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->isLoginWithTwoFactor()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f130228

    goto/16 :goto_8

    :cond_10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v2

    goto/16 :goto_8

    :goto_d
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getHasVerifiedEmail()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_11
    move-object v2, v1

    :goto_e
    const-string v5, "E"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v5, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13020e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_f
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/profile/PersonalInformation;->getEMail()Ljava/lang/String;

    move-result-object v1

    :cond_13
    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_10

    :cond_14
    const/4 v3, 0x0

    :cond_15
    :goto_10
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v3, :cond_16

    const v1, 0x7f13020b

    goto :goto_11

    :cond_16
    const v1, 0x7f13020c

    :goto_11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_f

    :goto_12
    new-instance v0, Lnf/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileContactBinding;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d00a7

    return v0
.end method

.method public final getListener()Lx9/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/a<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "listener"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getProfileContactCardData()Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "profileContactCardData"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->context:Landroid/content/Context;

    return-void
.end method

.method public final setListener(Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/a<",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->listener:Lx9/a;

    return-void
.end method

.method public final setProfileContactCardData(Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileContactModel;->profileContactCardData:Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;

    return-void
.end method
