.class public final Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "checkMessageType",
        "",
        "Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;",
        "data_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final checkMessageType(Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getPopupType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

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
    if-nez v0, :cond_6

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_6

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p0, 0x1

    :goto_5
    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    return v1

    :pswitch_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_b

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v0, 0x1

    :goto_a
    if-nez v0, :cond_b

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getServiceCode()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    return v1

    :pswitch_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_10

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_e

    goto :goto_e

    :cond_e
    const/4 p0, 0x0

    goto :goto_f

    :cond_f
    :goto_e
    const/4 p0, 0x1

    :goto_f
    if-nez p0, :cond_10

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    :goto_10
    return v1

    :pswitch_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v0, 0x1

    :goto_12
    if-nez v0, :cond_19

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_19

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getFolder()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    :goto_15
    const/4 v0, 0x1

    :goto_16
    if-nez v0, :cond_19

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getFolderTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_17

    goto :goto_17

    :cond_17
    const/4 p0, 0x0

    goto :goto_18

    :cond_18
    :goto_17
    const/4 p0, 0x1

    :goto_18
    if-nez p0, :cond_19

    goto :goto_19

    :cond_19
    const/4 v1, 0x0

    :goto_19
    return v1

    :pswitch_4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1a

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1b
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1c

    :cond_1c
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1d
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    if-nez p0, :cond_1e

    goto :goto_1e

    :cond_1e
    const/4 v1, 0x0

    :goto_1e
    return v1

    :pswitch_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_1f

    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    :cond_20
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-nez v0, :cond_23

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_21

    goto :goto_21

    :cond_21
    const/4 p0, 0x0

    goto :goto_22

    :cond_22
    :goto_21
    const/4 p0, 0x1

    :goto_22
    if-nez p0, :cond_23

    goto :goto_23

    :cond_23
    const/4 v1, 0x0

    :goto_23
    return v1

    :pswitch_6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_24

    goto :goto_24

    :cond_24
    const/4 v0, 0x0

    goto :goto_25

    :cond_25
    :goto_24
    const/4 v0, 0x1

    :goto_25
    if-nez v0, :cond_28

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageData;->getTitle()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_26

    goto :goto_26

    :cond_26
    const/4 p0, 0x0

    goto :goto_27

    :cond_27
    :goto_26
    const/4 p0, 0x1

    :goto_27
    if-nez p0, :cond_28

    goto :goto_28

    :cond_28
    const/4 v1, 0x0

    :goto_28
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
