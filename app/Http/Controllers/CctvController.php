<?php

namespace App\Http\Controllers;

use App\Models\Cctv;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator as ValidatorFacade;
use Illuminate\Support\Facades\Redirect;
use Illuminate\View\View;

class CctvController extends Controller
{
    public function index(Request $request): View
{
    $query = Cctv::query();

    // Filter berdasarkan divisi
    if ($request->filled('fv_divisi')) {
        $query->where('fv_divisi', $request->input('fv_divisi'));
    }

    // Filter berdasarkan principle
    if ($request->filled('fv_principle')) {
        $query->where('fv_principle', $request->input('fv_principle'));
    }

    // Filter berdasarkan systipe
    if ($request->filled('fv_sys_type')) {
        $query->where('fv_sys_type', $request->input('fv_sys_type'));
    }

    // Filter berdasarkan nama cabang
    if ($request->filled('fv_branch_Name')) {
        $query->where('fv_branch_Name', $request->input('fv_branch_Name'));
    }

    // Filter berdasarkan region
    if ($request->filled('fc_region')) {
        $query->where('fc_region', $request->input('fc_region'));
    }

    // Filter berdasarkan status
    if ($request->filled('fc_status')) {
        $query->where('fc_status', $request->input('fc_status'));
    }

    // Filter pencarian umum
    $search = $request->input('search');
    if ($search) {
        $query->where(function($q) use ($search) {
            $q->Where('fv_divisi', 'like', "%{$search}%")
            ->orWhere('fv_sys_type', 'like', "%{$search}%")
              ->orWhere('fv_principle', 'like', "%{$search}%")
              ->orWhere('fv_link_add', 'like', "%{$search}%")
              ->orWhere('fv_anydesk', 'like', "%{$search}%")
              ->orWhere('fc_region', 'like', "%{$search}%")
              ->orWhere('fv_branch_Name', 'like', "%{$search}%");
        });
    }

    // Ambil data dengan pagination
    $cctvs = $query->paginate(1000);

    return view('cctv.index', ['cctvs' => $cctvs]);
}

    public function dashboard(): View
    {
        $cctv = Cctv::all();
        return view('dashboard', ['cctvs' => $cctv]);
    }

    public function create(): View
    {
        $provinces = [
            'Jawa Barat', 'Jawa Tengah', 'Jawa Timur', 'Bali','Banten', 'Nusa Tenggara Barat', 'Nusa Tenggara Timur',
            'Kalimantan Barat', 'Kalimantan Tengah', 'Kalimantan Timur', 'Kalimantan Selatan', 'Sulawesi Utara',
            'Sulawesi Tengah', 'Sulawesi Selatan', 'Sulawesi Tenggara', 'Maluku', 'Maluku Utara', 'Papua', 'Papua Barat'
        ];

        return view('cctv.create', compact('provinces'));
    }

    public function store(Request $request): RedirectResponse
    {
        $validator = ValidatorFacade::make($request->all(), [
            'fc_id_cctv'        => 'required|string|max:10',
            'fv_divisi'         => 'nullable|string|max:255',
            'fv_sys_type'       => 'nullable|string|max:255',
            'fv_principle'      => 'nullable|string|max:255',
            'fv_branch_Name'    => 'nullable|string|max:255',
            'fv_anydesk'        => 'nullable|string|max:255',
            'fv_teamviever'     => 'nullable|string|max:255',
            'fv_ultraviewer'    => 'nullable|string|max:255',
            'fv_link_add'       => 'nullable|string|max:255',
            'fv_link_temp'      => 'nullable|string|max:255',
            'fc_user_it'        => 'nullable|string|max:8',
            'fc_password_it'    => 'nullable|string|max:15',
            'fc_user_sysadm'    => 'nullable|string|max:8',
            'fc_password_sysadm'=> 'nullable|string|max:15',
            'fv_status_hdd_ext' => 'nullable|string|max:255',
            'fc_username'       => 'nullable|string|max:8',
            'fc_serial'         => 'nullable|string|max:20',
            'fc_user'           => 'nullable|string|max:8',
            'fc_password'       => 'nullable|string|max:15',
            'fn_qty_cam'        => 'nullable|integer',
            'fc_region'         => 'nullable|string|max:30',
            'fc_status'         => 'nullable|string|max:1',
            'fv_ket_error'      => 'nullable|string|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $cctvDetails = $validator->validated();

        Cctv::create($cctvDetails);

        return redirect()->route('cctvs.index')
            ->with('status', 'CCTV data added successfully');
    }

    public function edit(Cctv $cctv): View
    {
        return view('cctv.edit', ['cctv' => $cctv]);
    }

    public function update(Request $request, Cctv $cctv): RedirectResponse
    {
        $validator = ValidatorFacade::make($request->all(), [
            'fc_id_cctv'        => 'required|string|max:10',
            'fv_divisi'         => 'nullable|string|max:255',
            'fv_sys_type'       => 'nullable|string|max:255',
            'fv_principle'      => 'nullable|string|max:255',
            'fv_branch_Name'    => 'nullable|string|max:255',
            'fv_anydesk'        => 'nullable|string|max:255',
            'fv_teamviever'     => 'nullable|string|max:255',
            'fv_ultraviewer'    => 'nullable|string|max:255',
            'fv_link_add'       => 'nullable|string|max:255',
            'fv_link_temp'      => 'nullable|string|max:255',
            'fc_user_it'        => 'nullable|string|max:8',
            'fc_password_it'    => 'nullable|string|max:15',
            'fc_user_sysadm'    => 'nullable|string|max:8',
            'fc_password_sysadm'=> 'nullable|string|max:15',
            'fv_status_hdd_ext' => 'nullable|string|max:255',
            'fc_username'       => 'nullable|string|max:8',
            'fc_serial'         => 'nullable|string|max:20',
            'fc_user'           => 'nullable|string|max:8',
            'fc_password'       => 'nullable|string|max:15',
            'fn_qty_cam'        => 'nullable|integer',
            'fc_region'         => 'nullable|string|max:30',
            'fc_status'         => 'nullable|string|max:1',
            'fv_ket_error'      => 'nullable|string|max:255',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $cctvDetails = $validator->validated();
        $cctv->update($cctvDetails);

        return redirect()->route('cctvs.index')
            ->with('status', 'CCTV data updated successfully');
    }

    public function destroy(Cctv $cctv)
    {
        $cctv->delete();

        return Redirect::route('cctvs.index')->with('success', 'Data CCTV berhasil dihapus');
    }
}