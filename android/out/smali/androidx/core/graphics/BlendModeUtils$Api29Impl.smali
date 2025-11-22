.class Landroidx/core/graphics/BlendModeUtils$Api29Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BlendModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainBlendModeFromCompat(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroidx/core/graphics/BlendModeCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {}, Landroidx/appcompat/widget/s;->c()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Landroidx/appcompat/widget/r;->d()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Landroidx/appcompat/widget/q;->c()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Landroidx/appcompat/widget/p;->j()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Landroidx/appcompat/widget/o;->b()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Landroidx/appcompat/widget/n;->d()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Landroidx/core/app/f;->d()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lad/b;->b()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lad/a;->c()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Landroidx/appcompat/widget/u;->c()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lad/b;->m()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lad/a;->k()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Landroidx/appcompat/widget/u;->j()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Landroidx/core/app/m;->i()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Landroidx/appcompat/widget/t;->l()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Landroidx/appcompat/widget/s;->j()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Landroidx/appcompat/widget/r;->o()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {}, Landroidx/appcompat/widget/q;->j()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {}, Landroidx/appcompat/widget/t;->a()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {}, Landroidx/appcompat/widget/p;->k()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {}, Landroidx/appcompat/widget/o;->k()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {}, Landroidx/appcompat/widget/n;->l()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {}, Landroidx/core/app/f;->l()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {}, Lad/b;->l()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-static {}, Lad/a;->j()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-static {}, Landroidx/appcompat/widget/u;->i()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-static {}, Landroidx/core/app/m;->h()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-static {}, Landroidx/appcompat/widget/p;->e()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-static {}, Landroidx/core/app/m;->a()Landroid/graphics/BlendMode;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
